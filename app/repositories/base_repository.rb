require 'csv'

class BaseRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @elements      = []
    @next_id       = 1
    load_csv if File.exist?(@csv_file_path)
  end

  def add(element)
    element.id = @next_id
    @elements << element
    @next_id += 1
    save_csv
  end

  def fetch
    return @elements
  end

  private

  def load_csv
    csv_options = {headers: :first_row, header_converters: :symbol}
    @next_id = 0
    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      @elements << build_element(row)
      @next_id = row[:id]
    end
    @next_id += 1
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << @elements.first.class.build_headers
      @elements.each do |element|
        csv << element.build_for_csv
      end
    end
  end
end
