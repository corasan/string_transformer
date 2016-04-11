require 'spec_helper'
require 'string_transformer'

describe StringTransformer do
    it 'has a version number' do
        expect(StringTransformer::VERSION).not_to be nil
    end

    it 'string is the right length' do
        x = 'Hello'.encrypt
        expect(x.length).to eq(27)
    end

    it 'decrypt string' do
        x = 'Hello World!'.encrypt
        expect(x.decrypt).to eq('Hello World!')
    end

    it 'string ends with _$' do
        x = 'Hi'.encrypt
        expect(x[-2, 2]).to eq('_$')
    end
end
