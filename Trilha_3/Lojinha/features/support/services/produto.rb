# class Produto
#         include HTTParty
        
#         headers "Content-Type" => "application/json"
#         base_uri CONFIG["http://165.227.93.41/lojinha"]

#         def post_produto
#             self.class.post("/produto")
#         end

#         def get_buscar_produto
#             self.class.get("/produto/")
#         end

#         def get_buscar_produto(id)
#             self.class.get("/produto/#{id}")
#         end
# end