## Installation

Untuk menginstall semua package

```bash
npm install
```

Untuk menginstall cypress

```bash
npm install cypress --save-dev
```

Untuk menginstall cucumber

```bash
npm i @badeball/cypress-cucumber-preprocessor
```

Untuk menginstall esbuild bundler by Gleb Bahmutov

```bash
npm i @bahmutov/cypress-esbuild-preprocessor
```

Setelah menginstal paket-paket ini, Anda perlu mengonfigurasi Cypress untuk menggunakan plugin. Konfigurasi pada file cypress config akan terlihat seperti ini:

```bash
import { defineConfig } from "cypress";
import createBundler from "@bahmutov/cypress-esbuild-preprocessor";
import { addCucumberPreprocessorPlugin } from "@badeball/cypress-cucumber-preprocessor";
import createEsbuildPlugin from "@badeball/cypress-cucumber-preprocessor/esbuild";

export default defineConfig({
  e2e: {
    specPattern: "**/*.feature",
    async setupNodeEvents(
      on: Cypress.PluginEvents,
      config: Cypress.PluginConfigOptions
    ): Promise<Cypress.PluginConfigOptions> {
      await addCucumberPreprocessorPlugin(on, config);
      on(
        "file:preprocessor",
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        })
      );
      return config;
    },
  },
});
```

Dokumentasi terkait:
- https://siubie.github.io/belajar-cypress/docs/intro
- https://docs.cypress.io/guides/overview/why-cypress 
- https://filiphric.com/cucumber-in-cypress-a-step-by-step-guide