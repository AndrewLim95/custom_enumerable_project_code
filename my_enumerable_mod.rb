module Enumerable
    # Your code goes here
    def my_each_with_index
      i = 0
      for e in self
        yield e,i
        i += 1
      end
    end
  
    def my_select
      selected = []
      for e in self
        if yield(e)
          selected.push(e)
        end
      end
      selected
    end
  
    def my_all?
      selected = []
      for e in self
        if yield(e)
          selected.push(e)
        end
      end
      if selected == self
        return true
      else
        return false
      end
    end
  
    def my_any?
      f = 0
      for e in self
        if !yield(e)
          f+=1
        end
      end
      if f == self.size
        return false
      else
        return true
      end
    end
  
    def my_none?
      f = 0
      for e in self
        if !yield(e)
          f+=1
        end
      end
      if f == self.size
        return true
      else
        return false
      end
    end
  
    def my_count
      if block_given?
        c = 0
        for e in self
          if yield(e)
            c+=1
          end
        end
        c 
      else
        self.size
      end
    end
  
    def my_map
      selected = []
      for e in self
        selected.push yield(e)
      end
      selected
    end
  
    def my_inject(initial)
  
      total = 1
      for e in self
        total = yield(total,e)
      end
      initial + total - 1
    end
    
  end
  # You will first have to define my_each
  # on the Array class. Methods defined in
  # your enumerable module will have access
  # to this method
  class Array
    # Define my_each here
    def my_each
      for e in self
        yield e
      end
    end
  end