class Discovery < Table
  OPTIONS = RangedHash.new({
    (1..1) => '<%= unnatural_feature %>',
    (2..4) => '<%= natural_feature %>',
    (5..6) => '<%= evidence %>',
    (7..8) => '<%= creature %>',
    (9..12) => '<%= structure %>'
  }.freeze)

  def unnatural_feature
    self.sub_table = UnnaturalFeature.new
    'Unnatural Feature'
    # @unnatural_feature ||= "Unnatural Feature<br />#{UnnaturalFeature.new}"
  end

  def natural_feature
    self.sub_table = NaturalFeature.new
    'Natural Feature'
    # @natural_feature ||= "Natural Feature<br />#{NaturalFeature.new}"
  end

  def evidence
    self.sub_table = Evidence.new
    'Evidence'
    # @evidence ||= "Evidence<br />#{Evidence.new}"
  end

  def creature
    'Creature'
  end

  def structure
    self.sub_table = Structure.new
    'Structure'
    # @structure ||= "Structure<br />#{Structure.new}"
  end
end