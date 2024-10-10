|-- .github
|     |-- workflows
|          |-- 01_api_tests.yml
|          |-- 02_api_tests_select_env.yml
|-- cypress
|     |-- e2e
|          |-- tests-reqres
|                |-- login.cy.js
|                |-- register.cy.js
|                |-- users.cy.js
|     |-- fixtures
|           |-- login
|                |-- login-successful.json
|                |-- login-unsuccessful.json
|           |-- register
|                |-- register-successful.json
|                |-- register-unsuccessful.json
|           |-- users
|                |-- user_create.json
|                |-- user_update_patch.json
|                |-- user_update_put.json
|     |-- reports
|     |-- support
|          |-- utils
|                |-- EndpointUtils.js
|                |-- RequestBodyUtils.js
|                |-- RequestUtils.js
|                |-- ResponseUtils.js
|                |-- VerificationUtils.js
|          |-- commands.js
|          |-- e2e.js
|-- .gitignore
|-- cypress.config.js
|-- package.json
```

- `cypress/e2e`: Contains the actual test files. You can organize your tests into subdirectories as needed. 
- `cypress/fixtures`: Contains external files (example: user create/update data) that can be used to mock data during tests.
- `cypress/reports`: Contains the report for tests (Logs are attached).
- `cypress/support`: Contains custom commands and global configuration.
- `cypress/support/utils`: Contains the Utilities that provides methods for asserting different conditions on web elements, handling requests and responses.


## ⚙️ Configuration

- Modify `cypress.config.json` for Cypress configuration settings.
- Customize `commands.js` and other files in `cypress/support` for reusable commands.
///////////////////////////////////////////////////////
scripts": {
    "test": "cypress open",
    "delete:reportFolder": "rm -rf mochawesome-report/",
    "test:cli": "npm run delete:reportFolder && cypress run",
    "merge:reports": "mochawesome-merge mochawesome-report/*.json > cypress-combined-report.json",
    "create:html:report": "npm run merge:reports && marge --reportDir TestReport cypress-combined-report.json"
  },