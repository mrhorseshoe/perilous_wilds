require 'details/alignment'
require 'details/magic_type'

class Discovery < Table
  class UnnaturalFeature < Table
    class Arcane < Table
      OPTIONS = RangedHash.new(
        (1..2) => 'residue',
        (3..5) => 'blight',
        (6..7) => 'alteration/mutation',
        (8..10) => 'enchantment',
        (11..12) => 'source/repository'
      ).freeze

      def add_details
        add_detail('Alignment', Details::Alignment.new(random).roll)
        add_detail('Magic Type', Details::MagicType.new(random).roll)
      end
    end
  end
end
