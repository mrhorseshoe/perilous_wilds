require 'discovery/structure/enigmatic'
require 'discovery/structure/infrastructure'
require 'discovery/structure/dwelling'
require 'discovery/structure/burial'
require 'discovery/structure/ruin'
require 'steading'

class Discovery < Table
  class Structure < Table
    OPTIONS = RangedHash.new(
      (1..1) => '<%= enigmatic %>',
      (2..3) => '<%= infrastructure %>',
      (4..4) => '<%= dwelling %>',
      (5..6) => '<%= burial %>',
      (7..8) => '<%= steading %>',
      (9..12) => '<%= ruin %>'
    ).freeze

    private

    def enigmatic
      self.sub_table = Discovery::Structure::Enigmatic.new.roll
      'Enigmatic'
    end

    def infrastructure
      self.sub_table = Discovery::Structure::Infrastructure.new.roll
      'Infrastructure'
    end

    def dwelling
      self.sub_table = Discovery::Structure::Dwelling.new.roll
      'Dwelling'
    end

    def burial
      self.sub_table = Discovery::Structure::Burial.new.roll
      'Burial/Religious'
    end

    def steading
      self.sub_table = ::Steading.new.roll
      'Steading'
    end

    def ruin
      self.sub_table = Discovery::Structure::Ruin.new.roll
      'Ruin'
    end
  end
end
