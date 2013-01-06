module Devise
  module Models
    module Uid
      extend ActiveSupport::Concern

      included do
        before_save :generate_uid
      end

      module ClassMethods
        def uid
          generate_token(:uid)
        end
      end

      private

      def generate_uid
        self.uid = self.class.uid if self.uid.nil?
      end
    end
  end
end
