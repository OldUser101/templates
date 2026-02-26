{
  description = "Nathan Gill's flake templates";

  outputs =
    { self }:
    let
      genTitle = name: "Nathan Gill's ${name} flake template";
    in
    {
      templates.haskell = rec {
        path = ./haskell;
        description = genTitle "Haskell";
        welcomeText = ''
          # ${description}

          This is a simple Haskell template containing:

          - Glasgow Haskell Compiler (GHC)
          - Ormolu (formatter)
          - haskell-language-server (LSP)

          No further help is provided, as none of these are complicated
          or require additional setup.
        '';
      };
    };
}
