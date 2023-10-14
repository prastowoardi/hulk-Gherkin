const { defineConfig } = require("cypress");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const addCucumberPreprocessorPlugin = require("@badeball/cypress-cucumber-preprocessor").addCucumberPreprocessorPlugin;
const createEsbuildPlugin = require("@badeball/cypress-cucumber-preprocessor/esbuild").createEsbuildPlugin;

module.exports = defineConfig({
  viewportHeight: 1024,
  viewportWidth: 1280,
  chromeWebSecurity: false,
  experimentalStudio: true,
  // reporter: 'cypress-multi-reporters  ',
  e2e: {
    async setupNodeEvents(on, config) {
      // implement node event listeners here
      const bundler = createBundler({
        plugins: [createEsbuildPlugin(config)]
      })
      on("file:preprocessor", bundler)
      await addCucumberPreprocessorPlugin(on, config)

      return config
    },
    baseUrl: 'http://localhost/siacloud/',
    specPattern: "cypress/**/*.feature"
  },
})