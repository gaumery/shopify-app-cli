# frozen_string_literal: true

module ShopifyCli
  module Messages
    MESSAGES = {
      core: {
        connect: {
          help: <<~HELP,
          Connect a Shopify App CLI project. Restores the ENV file.
            Usage: {{command:%s connect}}
          HELP

          production_warning: "{{yellow:! Don't use}} {{cyan:connect}} {{yellow:for production apps}}",
          connected: "{{v}} Project now connected to {{green:%s}}",
          serve: "{{*}} Run {{command:%s serve}} to start a local development server",
          organization_select: "To which organization does this project belong?",
          app_select: "To which app does this project belong?",
          no_development_stores: <<~MESSAGE,
          No development stores available.
          Visit {{underline:https://partners.shopify.com/%d/stores}} to create one
          MESSAGE
          development_store_select: "Which development store would you like to use?",
        },

        context: {
          open_url: <<~OPEN,
          Please open this URL in your browser:
          {{green:%s}}
          OPEN
        },

        create: {
          help: <<~HELP,
          Create a new project.
            Usage: {{command:%s create [ %s ]}}
          HELP

          error: {
            invalid_app_type: "{{red:Error}}: invalid app type {{bold:%s}}",
          },

          project_type_select: "What type of project would you like to create?",
        },

        env_file: {
          saving_header: "writing %s file...",
          saving: "writing %s file",
          saved: "%s saved to project root",
        },

        git: {
          error: {
            directory_exists: "Project directory already exists. Please create a project with a new name.",
            no_branches_found: "Could not find any git branches",
            repo_not_initiated: "Git repo is not initiated. Please run `git init` and make at least one commit.",
            no_commits_made: "No git commits have been made. Please make at least one commit.",
          },

          cloning: "Cloning into %s...",
          cloned: "Cloned into %s",
        },

        help: {
          error: {
            command_not_found: "Command %s not found.",
          },

          preamble: <<~MESSAGE,
          Use {{command:%s help <command>}} to display detailed information about a specific command.

          {{bold:Available core commands:}}

          MESSAGE
        },

        heroku: {
          error: {
            authentication: "Could not authenticate with Heroku",
            creation: "Heroku app could not be created",
            deploy: "Could not deploy to Heroku",
            download: "Heroku CLI could not be downloaded",
            install: "Could not install Heroku CLI",
            could_not_select_app: "Heroku app `%s` could not be selected",
          },
        },

        load_dev: {
          help: <<~HELP,
          Load a development instance of Shopify App CLI from the given path. This command is intended for development work on the CLI itself.
            Usage: {{command:%s load-dev `/absolute/path/to/cli/instance`}}
          HELP

          error: {
            project_dir_not_found: "{{x}} %s does not exist",
          },

          reloading: "Reloading %s from %s",
        },

        load_system: {
          help: <<~HELP,
          Reload the installed instance of Shopify App CLI. This command is intended for development work on the CLI itself.
            Usage: {{command:%s load-system}}
          HELP

          reloading: "Reloading %s from %s",
        },

        logout: {
          help: <<~HELP,
          Log out of a currently authenticated Organization and Shop, or clear invalid credentials
            Usage: {{command:%s logout}}
          HELP

          success: "Logged out of Organization and Shop",
        },

        monorail: {
          consent_prompt: <<~MSG,
            Would you like to enable anonymous usage reporting?
            If you select “Yes”, we’ll collect data about which commands you use and which errors you encounter.
            Sharing this anonymous data helps Shopify improve this tool.
          MSG
        },

        oauth: {
          error: {
            timeout: "Timed out while waiting for response from Shopify",
          },

          location: {
            admin: "development store",
            partner: "Shopify Partners account",
          },
          authentication_required:
            "{{i}} Authentication required. Login to the URL below with your %s credentials to continue.",

          servlet: {
            success_response: "Authenticated Successfully, this page will close shortly.",
            invalid_request_response: "Invalid Request: %s",
            invalid_state_response: "Anti-forgery state token does not match the initial request.",
            authenticated: "Authenticate Successfully",
            not_authenticated: "Failed to Authenticate",
          },
        },

        options: {
          help_text: "Print help for command",
        },

        partners_api: {
          error: {
            account_not_found: <<~MESSAGE,
            {{x}} error: Your account was not found. Please sign up at https://partners.shopify.com/signup
            For authentication issues, run {{command:%s logout}} to clear invalid credentials
            MESSAGE
          },
        },

        populate: {
          options: {
            header: "{{bold:{{cyan:%s}} options:}}",
            count_help: "Number of resources to generate",
          },
          populating: "Populating %d %ss...",
          completion_message: <<~COMPLETION_MESSAGE,
          Successfully added %d %s to {{green:%s}}
          {{*}} View all %ss at {{underline:%s%ss}}
          COMPLETION_MESSAGE
        },

        project: {
          error: {
            not_in_project: <<~MESSAGE,
            {{x}} You are not in a Shopify app project
            {{yellow:{{*}}}}{{reset: Run}}{{cyan: shopify create}}{{reset: to create your app}}
            MESSAGE
            cli_yaml: {
              not_hash: "{{x}} .shopify-cli.yml was not a proper YAML file. Expecting a hash.",
              invalid: "{{x}} %s contains invalid YAML: %s",
              not_found: "{{x}} %s not found",
            },
          },
        },

        project_type: {
          error: {
            cannot_override_core: "Can't register duplicate core command '%s' from %s",
          },
        },

        system: {
          help: <<~HELP,
          Print details about the development system.
            Usage: {{command:%s system [all]}}

          {{cyan:all}}: displays more details about development system and environment

          HELP

          error: {
            unknown_option: "{{x}} {{red:unknown option '%s'}}",
          },

          header: "{{bold:Shopify App CLI}}",
          const: "%17s = %s",
          ruby_header: <<~RUBY_MESSAGE,
          {{bold:Ruby (via RbConfig)}}
            %s
          RUBY_MESSAGE
          rb_config: "%-25s - RbConfig[\"%s\"]",
          command_header: "{{bold:Commands}}",
          command_with_path: "{{v}} %s, %s",
          command_not_found: "{{x}} %s",
          ngrok_available: "{{v}} ngrok, %s",
          ngrok_not_available: "{{x}} ngrok NOT available",
          project: {
            header: "{{bold:In a {{cyan:%s}} project directory}}",
            command_with_path: "{{v}} %s, %s, version %s",
            command_not_found: "{{x}} %s",
            env_header: "{{bold:Project environment}}",
            env_not_set: "not set",
            env: "%-18s = %s",
            no_env: "{{x}} .env file not present",
          },
          environment_header: "{{bold:Environment}}",
          env: "%-17s = %s",
        },

        tasks: {
          ensure_env: {
            api_key_question: "What is your Shopify API key?",
            api_secret_key_question: "What is your Shopify API secret key?",
            development_store_question: "What is your development store URL? (e.g. my-test-shop.myshopify.com)",
          },
          ensure_test_shop: {
            could_not_verify_shop: "Couldn't verify your shop %s",
            convert_dev_to_test_store:
              "Do you want to convert %s to a test shop? This will enable you to install your app on this store.",
            transfer_disabled: "{{v}} Transfer has been disabled on %s.",
          },
          update_dashboard_urls: {
            updated: "{{v}} Whitelist URLS updated in Partners Dashboard}}",
            update_error:
              "{{x}} error: For authentication issues, run {{command:%s logout}} to clear invalid credentials",
            update_prompt: "Do you want to update your application url?",
          },
        },

        tunnel: {
          error: {
            stop: "ngrok tunnel could not be stopped. Try running {{command:killall -9 ngrok}}",
            url_fetch_failure: "Unable to fetch external url",
          },

          stopped: "{{green:x}} ngrok tunnel stopped",
          not_running: "{{green:x}} ngrok tunnel not running",
          start_with_account: "{{v}} ngrok tunnel running at {{underline:%s}}, with account %s",
          start: "{{v}} ngrok tunnel running at {{underline:%s}}",
        },

        update: {
          help: <<~HELP,
          Update Shopify App CLI.
            Usage: {{command:%s update}}
          HELP

          error: {
            development_version:
              "Development version of {{command:%1$s}} in use. Run {{command:%1$s load-system}} first.",
            git_head_locked: <<~MESSAGE,
            failed!
            It looks like another git operation is in progress on {{blue:%1$s}}.
            Try running {{command:%2$s update}}.
            If that fails, you must run {{green: rm %1$s/.git/HEAD.lock}} to continue.
            MESSAGE
            git_master_locked: <<~MESSAGE,
            failed!
            It looks like another git operation is in progress on {{blue:%1$s}}.
            Try running {{command:%2$s update}}.
            If that fails, you must run {{green: rm %1$s/.git/refs/heads/master.lock}} to continue.
            MESSAGE
            git_command_error: "command failed: %s",
          },

          updating: "Updating shopify-cli... ",
          updated: "done!",
          auto_update_prompt: "Would you like to enable auto updates for Shopify App CLI?",
        },
      },
    }.freeze
  end
end