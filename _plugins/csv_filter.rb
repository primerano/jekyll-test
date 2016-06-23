require 'pp'
module Jekyll
  module CsvFilter
    def build_json_from_csv(csv_filename)
      if @context.registers[:site].data.empty?
        puts "============== data empty .  dumping @context.registers[:site] "
        pp @context.registers[:site]
        puts "================ end"
      end
      data = @context.registers[:site].data[csv_filename]
      jsonify(data)
    end
  end
end

Liquid::Template.register_filter(Jekyll::CsvFilter)
