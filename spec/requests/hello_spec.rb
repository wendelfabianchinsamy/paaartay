# frozen_string_literal: true

require "rails_helper"

RSpec.describe("HelloController") do
  describe "GET /hello" do
    describe "is successful" do
      before do
        get hello_index_path
      end

      it "returns a 200 http status code" do
        expect(response).to(have_http_status(:ok))
      end

      it "returns the correct response body" do
        body = response.parsed_body.symbolize_keys
        expect(body).to(eq({ message: "hello world" }))
      end
    end
  end
end
