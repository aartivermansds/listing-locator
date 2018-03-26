module ApplicationHelper
    def listing_category_list
        ListingCategory.all.map {|lcat| [lcat.name, lcat.id]}
    end
end
