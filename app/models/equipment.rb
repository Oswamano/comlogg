class Equipment < ActiveRecord::Base
  has_many :error_reports

  def self.import_old_equipment
		Equipment.import(File.open("Book1.xlsx"))
  end

  def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			#Creates hash keys based on first row names
			row = Hash[[header, spreadsheet.row(i)].transpose]
			equipment = find_by_id(row["id"]) || new
			#Updates attributes of newspaper. NOTE: headers must have the specified names in quotes
			equipment.update_attributes(name: row["name"])
			#state_id: State.where(name: row["state"]), county: County.where(name: row["county"]), city: City.where(name: row["city"]),	    
		end
	end

  def self.open_spreadsheet(file)
		case File.extname(file)
		when ".csv" then Roo::Csv.new(file.path,extension: :csv)
		when ".xls" then Roo::Excel.new(file.path, extension: :xls)
		when ".xlsx" then Roo::Excelx.new(file.path, extension: :xlsx)
		else raise "Unknown file type: #{file.original_filename}"
		end
	end
end
