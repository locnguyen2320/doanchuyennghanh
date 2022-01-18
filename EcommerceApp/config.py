import hashlib
import hmac

configmomo = dict(
    partnerCode= "MOMOZ9OX20211225",
    accessKey= "f2x5nA5d0WKK7hFj",
    serectKey= "qmk7xi8njPBwgrd1g4kp6AVClzdKyGB8",
    redirectUrl= 'http://locloclonglong.x10.mx/HocTap/%c4%90%e1%bb%93%20%c3%a1n%20L%20v%c3%a0%20L/',
    ipnUrl= "http://55a2-115-78-4-21.ngrok.io/notifymomo/",
)

def create_signature(rawSignature):

  key_byte = bytes(configmomo['serectKey'], 'utf-8')
  data_byte = bytes(rawSignature, 'utf-8')

  h = hmac.new(key_byte, data_byte, hashlib.sha256)
  return h.hexdigest()