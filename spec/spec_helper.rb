require 'chefspec'
require 'chefspec/policyfile'
at_exit{chefspec::Converge.report!}
