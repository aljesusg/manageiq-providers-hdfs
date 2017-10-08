describe ManageIQ::Providers::HDFS::StorageManager do
  it ".ems_type" do
    expect(described_class.ems_type).to eq('hdfs')
  end

  it ".description" do
    expect(described_class.description).to eq('Hadoop Database File System')
  end
end