require 'roo'
require 'thor'

class AthletsParser < Thor
  desc "parse", "parse the spreadsheet into an athlets object"
  def parse(spreadsheet)
    xlsx = Roo::Excelx.new(spreadsheet)
    sheet = xlsx.sheet('athlets')

    fields = {year = "Year", gender = "Gender", discipline = "Discipline", event = "Event",
              klass = "Class", teamId = "TeamID", name = "Name", fname = "Fname", ctry = "Ctry",
              medal = "Medal", g = "G", modality = "Modality"}

    rows = sheet.parser(fields)

    puts rows
  end

end
