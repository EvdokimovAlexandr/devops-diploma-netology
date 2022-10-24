variable "token" {
  default = "" # удалить
}
variable "cloud_id" {
  default = "" # удалить
}
variable "folder_id" {
  default = "" # удалить
}

#Оставить
variable "name_domain" {
  default = "devopsnetology.ru"
}
variable "yc_reserved_ip" {
  default = "178.154.205.217"
}
variable "image_id" {
  type = string
  default = "fd8fte6bebi857ortlja" # ubuntu 20.04
}