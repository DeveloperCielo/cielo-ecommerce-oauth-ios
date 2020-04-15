Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "CieloOAuth"
  spec.version      = "1.0.1"
  spec.summary      = "Biblioteca para facilitar a integração da autenticação com a Cielo"

  spec.description  = <<-DESC
  O SDK foi criado para viabilizar o reuso da autenticação com a Cielo. Todos os locais que usarem autenticação, poderão, de forma simples e prática, utilizar esse framework.
                   DESC

  spec.homepage     = "https://github.com/DeveloperCielo/cielo-ecommerce-oauth-ios"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Jeferson F. Nazario" => "jefnazario@gmail.com" }
  spec.social_media_url   = "https://twitter.com/jefnazario"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.platform     = :ios

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/DeveloperCielo/cielo-ecommerce-oauth-ios.git", :tag => "v1.0.1" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "*.*"
  spec.public_header_files = "Example/*.*"

end
