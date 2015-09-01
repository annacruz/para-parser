require 'roo'

class AthletsParser

  def parse(spreadsheet)
    xlsx = Roo::Excelx.new(spreadsheet)
    sheet = xlsx.sheet('athlets')

    fields = {year = "Year", gender = "Gender", discipline = "Discipline", event = "Event",
              klass = "Class", teamId = "TeamID", name = "Name", fname = "Fname", ctry = "Ctry",
              medal = "Medal", g = "G", modality = "Modality"}

    rows = sheet.parser(fields)

    print rows
  end

end
