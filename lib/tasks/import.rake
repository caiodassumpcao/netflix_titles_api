namespace :import do
  desc 'Import Netflix titles from CSV'
  task netflix_titles: :environment do
    require 'csv'

    file_path = Rails.root.join('db', 'netflix_titles.csv')
    CSV.foreach(file_path, headers: true) do |row|
      NetflixTitle.create!(
        title: row['title'],
        genre: row['listed_in'],
        year: row['release_year'].to_i,
        country: row['country'],
        published_at: row['date_added'],
        description: row['description']
      )
    end

    puts 'Netflix titles imported successfully'
  end
end

