variable "token" {
  default = "" # удалить
}
variable "cloud_id" {
  default = "" # удалить
}
variable "folder_id" {
  default = "" # удалить
}
variable "yc_reserved_ip" {
  default = "178.154.205.217"
}

#Оставить
variable "name_domain" {
  default = "devopsnetology.ru"
}
variable "image_id" {
  type = string
  default = "fd8fte6bebi857ortlja" # ubuntu 20.04
}