{
  inputs = { };
  outputs =
    { self, ... }:
    {
      templates = {
        pp = {
          path = ./python-poetry;
          description = "Python poetry project development environment";
          welcomeText = ''
            # Python poetry project
            Create development environment for python poetry projects.

            To create environment, run:
            ```sh
              nix develop --impure
            ```
          '';
        };
      };
      templates.default = self.templates.pp;
    };
}
