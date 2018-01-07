require 'fpm/package/python'
require 'fpm/cookery/package/package'

module FPM
  module Cookery
    module Package
      class Python < FPM::Cookery::Package::Package
        def fpm_object
          FPM::Package::Python.new
        end

        def package_setup
          fpm.version = recipe.version

          fpm.attributes[:python_bin?] = 'python'
          fpm.attributes[:python_easyinstall?] = 'easy_install'
          fpm.attributes[:python_pip?] = nil
          fpm.attributes[:python_pypi?] = 'https://pypi.python.org/simple'

          fpm.attributes[:python_package_name_prefix?] = 'python'
          fpm.attributes[:python_fix_name?] = true
          fpm.attributes[:python_fix_dependencies?] = true

          fpm.attributes[:python_downcase_name?] = true
          fpm.attributes[:python_downcase_dependencies?] = true

          fpm.attributes[:python_install_bin?] = nil
          fpm.attributes[:python_install_lib?] = nil
          fpm.attributes[:python_install_data?] = nil
          fpm.attributes[:python_dependencies?] = true
          fpm.attributes[:python_obey_requirements_txt?] = nil
          fpm.attributes[:python_scripts_executable?] = nil
          fpm.attributes[:python_disable_dependency?] = []

        end

        def package_input
          fpm.input(recipe.name)
        end
      end
    end
  end
end
