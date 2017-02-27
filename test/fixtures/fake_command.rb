module Commandoes
  class FakeCommand < Commandoes::IAmACommand
    use Commandoes::Plugins::ActiveModelPlugin

    attr_reader :name
    attr_reader :value

    validates_presence_of \
      :name
  end
end
