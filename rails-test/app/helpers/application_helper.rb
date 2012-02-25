module ApplicationHelper
   def language_collection
    [['English', 'english'], ['French', 'french']]
   end

   def show_language_collection
     [['All', 'all'], ['Only English', 'only_english'], ['English', 'english'], ['Only French', 'only_french'], ['French', 'french']]
   end

end
