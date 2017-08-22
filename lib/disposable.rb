#
# Author:: James Halsall <james.t.halsall@googlemail.com>
# Copyright:: 2017 rights reserved.
# License:: MIT
#

require 'date'
require 'lib/calculator/outgoings_calculator'

#
# Disposable.
#
# Disposable tells you your remaining disposable income by taking
# your scheduled monthly outgoings from a CSV file and deducating it
# from your current account balance
#
class Disposable
  def calculateRemaining(outgoings_data_file, current_balance)
    # TODO: parse the CSV data
    outgoings = OutgoingsCalculator.remainingOutgoings(Date.today.strftime("%d"), [])

    return current_balance.to_i - outgoings
  end
end
