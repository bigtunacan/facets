covers 'facets/symbol/thrown'

test_case Symbol do

  method :thrown? do
    test do
      assert( :a.thrown? { throw :a } )
    end

    test do
      refute( :a.thrown? { } )
      refute( :a.thrown? { true } )  # to exclude block's return value usage.
    end
  end

end

