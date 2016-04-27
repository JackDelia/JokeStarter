class AddThumbnailImageUrlToProjects < ActiveRecord::Migration
  def change
    add_column :projects,
    :thumbnail_image_url,
    :string,
    default: "http://vignette4.wikia.nocookie.net/thehungergamesrp/images/6/63/Joker_card_coca_cola_by_takes_pics_n_runs-d5wxc0g.jpg/revision/latest?cb=20150408075317"
  end
end
