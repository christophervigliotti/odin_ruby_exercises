def find_language_information(languages, language_name)
  # Take languages (a nested hash) and language_name as a symbol, return the
  # value for the language_name key (which will be another hash!)

  # the languages hash will look something like this:
  # {
  #   ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
  #   javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
  # }
  languages.each do |key, value|
    return languages[key] if key == language_name
  end
  return nil
end

def add_information_about_language(languages, language_name, info_key, info_value)
  # Take languages and add the key/value pair info_key/info_value to the nested
  # hash of language_name, then return the updated languages hash
  languages[language_name][info_key] = info_value
  return languages
end

def add_language(languages, language_name, language_info_value)
  # Take languages and add the key/value pair language_name/language_info_value
  # to it, then return languages
  languages[language_name] = language_info_value
  return languages
end

def delete_information_about_language(languages, language_name, info_key)
  # Take languages and delete the key/value pair with key info_key from
  # language_name, then return languages
  languages[language_name].delete(info_key)
  return languages
end

def delete_language(languages, language_name)
  # Take languages and delete the language_name key/value pair, then return
  # languages
  languages.delete(language_name)
  return languages
end

def find_beautiful_languages(languages)
  # Take languages and return a hash containing only languages which have the
  # key/value pair { is_beautiful?: true } listed in their information
  languages.each {
    |key, value|
    languages[key].each {
      |k,v|
      if k.to_s == 'is_beautiful?' && v == false
        languages.delete(key)
      end
    }
  }
  return languages
end

def find_language_facts(languages, language_name, fact_index = 0)
  # Take languages (now with additional facts added to each language with the
  # key :facts and value of an array of strings) and return the fact
  # language_name has at fact_index of its facts array, or at index 0 if this
  # argument is not given

  # the revised languages hash will look something like this:
  # {
  #   ruby: { facts: ['fact 0', 'fact 1'],
  #           initial_release: 'December 25, 1996',
  #           is_beautiful?: true },

  #   javascript: { facts: ['fact 0', 'fact 1'],
  #                 initial_release: 'December 4, 1995',
  #                 is_beautiful?: false }
  # }
  return languages[language_name].fetch(:facts).at(fact_index)
end


[:to_h, :include?, :&, :*, :+, :-, :at, :fetch, :last, :union, :difference, :intersection, :intersect?, 
  :push, :append, :pop, :shift, :unshift, :each_index, :join, :rotate, :rotate!, :sort!, :sort_by!, 
  :collect!, :map!, :select!, :filter!, :keep_if, :values_at, :delete_at, :delete_if, :reject!, 
  :transpose, :fill, :assoc, :sort, :rassoc, :uniq!, :flatten, :flatten!, :compact!, :find_index, 
  :count, :select, :filter, :repeated_permutation, :reject, :collect, :map, :repeated_combination, 
  :permutation, :combination, :bsearch_index, :deconstruct, :product, :bsearch, :first, 
  :all?, :any?, :one?, :none?, :minmax, :shuffle!, :shuffle, :reverse_each, :pack, :zip, :|, 
  :take, :take_while, :drop, :cycle, :drop_while, :<=>, :<<, :uniq, :compact, :==, :sum, :[], :[]=, 
  :sample, :empty?, :eql?, :insert, :index, :rindex, :replace, :clear, :shelljoin, :max, 
  :min, :inspect, :length, :size, :each, :reverse, :concat, :reverse!, :to_ary, :prepend, 
  :to_a, :to_s, :delete, :slice, :slice!, :dig, :hash, :chunk, :slice_before, :slice_after, :slice_when, :chunk_while, :find, :chain, :lazy, :entries, :sort_by, :grep, :grep_v, :detect, :find_all, :filter_map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :tally, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object, :singleton_class, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :class, :tap, :yield_self, :then, :frozen?, :gem, :extend, :clone, :method, :public_method, :singleton_method, :define_singleton_method, :===, :=~, :!~, :nil?, :respond_to?, :freeze, :object_id, :send, :to_enum, :enum_for, :__send__, :stub, :should, :null_object?, :should_not, :instance_eval, :instance_exec, :!=, :should_receive, :should_not_receive, :stub_chain, :unstub, :received_message?, :as_null_object, :!, :equal?, :__id__]
:ruby
[:to_h, :include?, :&, :*, :+, :-, :at, :fetch, :last, :union, :difference, :intersection, :intersect?, :push, :append, :pop, :shift, :unshift, :each_index, :join, :rotate, :rotate!, :sort!, :sort_by!, :collect!, :map!, :select!, :filter!, :keep_if, :values_at, :delete_at, :delete_if, :reject!, :transpose, :fill, :assoc, :sort, :rassoc, :uniq!, :flatten, :flatten!, :compact!, :find_index, :count, :select, :filter, :repeated_permutation, :reject, :collect, :map, :repeated_combination, :permutation, :combination, :bsearch_index, :deconstruct, :product, :bsearch, :first, :all?, :any?, :one?, :none?, :minmax, :shuffle!, :shuffle, :reverse_each, :pack, :zip, :|, :take, :take_while, :drop, :cycle, :drop_while, :<=>, :<<, :uniq, :compact, :==, :sum, :[], :[]=, :sample, :empty?, :eql?, :insert, :index, :rindex, :replace, :clear, :shelljoin, :max, :min, :inspect, :length, :size, :each, :reverse, :concat, :reverse!, :to_ary, :prepend, :to_a, :to_s, :delete, :slice, :slice!, :dig, :hash, :chunk, :slice_before, :slice_after, :slice_when, :chunk_while, :find, :chain, :lazy, :entries, :sort_by, :grep, :grep_v, :detect, :find_all, :filter_map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :tally, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object, :singleton_class, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :class, :tap, :yield_self, :then, :frozen?, :gem, :extend, :clone, :method, :public_method, :singleton_method, :define_singleton_method, :===, :=~, :!~, :nil?, :respond_to?, :freeze, :object_id, :send, :to_enum, :enum_for, :__send__, :stub, :should, :null_object?, :should_not, :instance_eval, :instance_exec, :!=, :should_receive, :should_not_receive, :stub_chain, :unstub, :received_message?, :as_null_object, :!, :equal?, :__id__]