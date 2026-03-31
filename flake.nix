{
  description = "Quarto blog dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfreePredicate =
            pkg:
            builtins.elem (nixpkgs.lib.getName pkg) [
              "claude-code"
            ];
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            quarto
            git
            claude-code
            tmux
          ];

          shellHook = ''
            echo "Quarto $(quarto --version) ready"

            if [ -z "$CI" ] && [ -z "$TMUX" ]; then
              SESSION="homepage"

              if ! tmux has-session -t $SESSION 2>/dev/null; then
                tmux new-session -d -s $SESSION -n "claude"
                tmux send-keys -t $SESSION:claude "claude" Enter

                tmux new-window -t $SESSION -n "bash"

                tmux new-window -t $SESSION -n "quarto"
                tmux send-keys -t $SESSION:quarto "quarto preview" Enter

                tmux select-window -t $SESSION:bash
              fi

              exec tmux attach-session -t $SESSION
            fi
          '';
        };
      }
    );
}
