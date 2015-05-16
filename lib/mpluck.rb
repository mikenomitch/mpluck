require "mpluck/version"

ActiveRecord::Relation.class_eval do
  def multipluck(*cols_to_pluck)
    connection.select_all( self.select(cols_to_pluck) )
  end
  alias_method :mpluck, :multipluck

  def grouped_multipluck(sorting_col, cols_to_pluck)
    cols_to_pluck << sorting_col unless cols_to_pluck.include?(sorting_col)

    self.multipluck(*cols_to_pluck).reduce({}) do |memo, record|
      memo[record["#{sorting_col}"]] = record
      memo
    end
  end

  alias_method :grouped_mpluck, :grouped_multipluck
end