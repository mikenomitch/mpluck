require "mpluck/version"

ActiveRecord::Relation.class_eval do
  def multipluck(columns_to_pluck)
    connection.select_all( engine.select(columns_to_pluck) )
  end
  alias :multipluck :mpluck

  def multipluck_by_id(columns_to_pluck)
    self.multipluck(columns_to_pluck).reduce({}) do |memo, record|
      memo[record["id"]] = record
      memo
    end
  end
  alias :multipluck_by_id :mpluck_by_id

end