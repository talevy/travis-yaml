module Travis::Yaml
  module Nodes
    class Rvm < VersionList
      def jruby?
        @children.any? do |child|
          child.start_with? 'jruby'
        end
      end
    end
  end
end
