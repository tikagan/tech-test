class V1::ThingsController < ApplicationController
    def index
        render json: { :things => [
            {
                :name => 'some-thing',
                :guid => 'long-number-goes-here'
            }
        ] }.to_json
    end
end
