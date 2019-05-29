class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
        t.string :name
        t.text :description
        t.string :address
      t.timestamps
    end
  end
  
  def self.search(term, current_page)
  if term
    page(current_page).where('name LIKE ?', "%#{term}%").order('id DESC')
  else
    page(current_page).order('id DESC') 
  end
end

end
