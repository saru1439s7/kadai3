class Notification < ApplicationRecord
  default_scope->{order(created_at: :desc)}

    belongs_to :book, optional: true
    belongs_to :book_comment, optional: true
    belongs_to :relationship, optional: true
     belongs_to :favorite, optional: true
    belongs_to :visiter, class_name: 'User', foreign_key: 'visiter_id', optional: true
    belongs_to :visited, class_name: 'User', foreign_key: 'visited_id', optional: true

end
