require File.expand_path('libraries/instance_types')

describe OpsworksUtils::INSTANCE_TYPES do
  let(:types) { OpsworksUtils::INSTANCE_TYPES }

  it "should be hashy and full of data" do
    expect(types.class).to eq(Hash)

    expect(types["c3.large"].class).to eq(Hash)
    expect(types["c3.large"][:cpu]).to eq(2)

    expect(types["m1.small"].class).to eq(Hash)
    expect(types["m1.small"][:ram]).to eq(1.7)
  end
end