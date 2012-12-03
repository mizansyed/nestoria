module Kernel
  def enum(*syms)
    syms.each { |s| const_set(s, s.to_s) }
    #const_set(:DEFAULT, syms.first) unless syms.nil?
  end
end

module Nestoria
  module Constants
    module ListingType
      enum  :BUY,
            :RENT,
            :SHARE
    end

    module PropertyType
      enum  :ALL,
            :HOUSE,
            :FLAT
    end

    module SortBy
      enum  :RELEVANCY,
            :BEDROOM_LOWHIGH,
            :BEDROOM_HIGHLOW,
            :PRICE_LOWHIGH,
            :PRICE_HIGHLOW,
            :NEWEST,
            :OLDEST,
            :RANDOM,
            :DISTANCE
    end
  end
end
