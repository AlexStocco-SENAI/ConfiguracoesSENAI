IF %vAmbienteLocal%==A04 (
          SET vMaquinaVLAN=LABORATORIO_CNC
          SET vMaquinaGateway=10.110.136.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.136.2
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.136.11
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.136.12
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.136.13
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.136.14
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.136.15
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.136.16
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.136.17
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.136.18
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.136.19
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.136.20
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.136.21
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.136.22
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.136.23
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.136.24
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.136.25
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.136.26
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.136.27
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.136.28
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.136.29
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.136.30
)


IF %vAmbienteLocal%==AS03 (
          SET vMaquinaVLAN=LABORATORIO_CNC
          SET vMaquinaGateway=10.110.136.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.136.3
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.136.41
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.136.42
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.136.43
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.136.44
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.136.45
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.136.46
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.136.47
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.136.48
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.136.49
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.136.50
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.136.51
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.136.52
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.136.53
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.136.54
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.136.55
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.136.56
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.136.57
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.136.58
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.136.59
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.136.60
)

IF %vAmbienteLocal%==AS05 (
          SET vMaquinaVLAN=LAB_INFORMATICA_2
          SET vMaquinaGateway=10.110.134.129
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.134.130
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.134.141
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.134.142
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.134.143
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.134.144
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.134.145
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.134.146
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.134.147
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.134.148
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.134.149
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.134.150
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.134.151
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.134.152
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.134.153
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.134.154
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.134.155
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.134.156
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.134.157
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.134.158
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.134.159
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.134.160
)


IF %vAmbienteLocal%==AS07 (
          SET vMaquinaVLAN=LAB_PNEUMATICA
          SET vMaquinaGateway=10.110.135.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.135.2
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.135.11
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.134.12
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.134.13
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.134.14
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.134.15
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.134.16
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.134.17
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.134.18
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.134.19
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.134.20
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.134.21
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.134.22
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.134.23
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.134.24
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.134.25
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.134.26
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.134.27
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.134.28
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.134.29
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.134.30
)


IF %vAmbienteLocal%==AS08 (
          SET vMaquinaVLAN=LAB_PNEUMATICA
          SET vMaquinaGateway=10.110.135.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.135.3
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.135.41
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.134.42
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.134.43
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.134.44
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.134.45
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.134.46
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.134.47
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.134.48
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.134.49
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.134.50
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.134.51
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.134.52
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.134.53
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.134.54
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.134.55
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.134.56
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.134.57
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.134.58
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.134.59
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.134.60
)

IF %vAmbienteLocal%==BS05 (
          SET vMaquinaVLAN=LABORATORIO_AUTOMACAO
          SET vMaquinaGateway=10.110.137.129
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.137.132
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.137.170
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.137.171
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.137.172
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.137.173
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.137.174
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.137.175
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.137.176
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.137.177
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.137.178
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.137.179
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.137.180
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.137.181
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.137.182
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.137.183
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.137.184
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.137.185
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.137.186
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.137.187
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.137.188
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.137.189
          IF %vMaquinaIdentificacao%==21 SET vMaquinaIP=10.110.137.190
          IF %vMaquinaIdentificacao%==22 SET vMaquinaIP=10.110.137.191
          IF %vMaquinaIdentificacao%==23 SET vMaquinaIP=10.110.137.192
          IF %vMaquinaIdentificacao%==24 SET vMaquinaIP=10.110.137.193
          IF %vMaquinaIdentificacao%==25 SET vMaquinaIP=10.110.137.194
)


IF %vAmbienteLocal%==BS10 (
          SET vMaquinaVLAN==LABORATORIO_AUTOMACAO
          SET vMaquinaGateway=10.110.137.129
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.137.130
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.137.140
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.137.141
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.137.142
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.137.143
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.137.144
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.137.145
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.137.146
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.137.147
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.137.148
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.137.149
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.137.150
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.137.151
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.137.152
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.137.153
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.137.154
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.137.155
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.137.156
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.137.157
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.137.158
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.137.159
          IF %vMaquinaIdentificacao%==21 SET vMaquinaIP=10.110.137.160
          IF %vMaquinaIdentificacao%==22 SET vMaquinaIP=10.110.137.161
          IF %vMaquinaIdentificacao%==23 SET vMaquinaIP=10.110.137.162
          IF %vMaquinaIdentificacao%==24 SET vMaquinaIP=10.110.137.163
          IF %vMaquinaIdentificacao%==25 SET vMaquinaIP=10.110.137.164
)


IF %vAmbienteLocal%==BS11 (
          SET vMaquinaVLAN=LABORATORIO_INSTRUMENTACAO
          SET vMaquinaGateway=10.110.137.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.137.3
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.137.40
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.137.41
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.137.42
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.137.43
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.137.44
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.137.45
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.137.46
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.137.47
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.137.48
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.137.49
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.137.50
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.137.51
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.137.52
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.137.53
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.137.54
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.137.55
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.137.56
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.137.57
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.137.58
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.137.59
          IF %vMaquinaIdentificacao%==21 SET vMaquinaIP=10.110.137.60
          IF %vMaquinaIdentificacao%==22 SET vMaquinaIP=10.110.137.61
          IF %vMaquinaIdentificacao%==23 SET vMaquinaIP=10.110.137.62
          IF %vMaquinaIdentificacao%==24 SET vMaquinaIP=10.110.137.63
          IF %vMaquinaIdentificacao%==25 SET vMaquinaIP=10.110.137.64
)

IF %vAmbienteLocal%==BS12 (
          SET vMaquinaVLAN=LABORATORIO_MAQ_ELETRICA
          SET vMaquinaGateway=10.110.138.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.138.2
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.138.10
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.138.11
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.138.12
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.138.13
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.138.14
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.138.15
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.138.16
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.138.17
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.138.18
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.138.19
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.138.20
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.138.21
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.138.22
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.138.23
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.138.24
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.138.25
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.138.26
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.138.27
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.138.28
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.138.29
          IF %vMaquinaIdentificacao%==21 SET vMaquinaIP=10.110.138.30
          IF %vMaquinaIdentificacao%==22 SET vMaquinaIP=10.110.138.31
          IF %vMaquinaIdentificacao%==23 SET vMaquinaIP=10.110.138.32
          IF %vMaquinaIdentificacao%==24 SET vMaquinaIP=10.110.138.33
          IF %vMaquinaIdentificacao%==25 SET vMaquinaIP=10.110.138.34
)


IF %vAmbienteLocal%==BS13 (
          SET vMaquinaVLAN==LABORATORIO_ELETRONICA
          SET vMaquinaGateway=10.110.138.129
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.138.130
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.138.140
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.138.141
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.138.142
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.138.143
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.138.144
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.138.145
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.138.146
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.138.147
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.138.148
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.138.149
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.138.150
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.138.151
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.138.152
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.138.153
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.138.154
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.138.155
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.138.156
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.138.157
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.138.158
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.138.159
          IF %vMaquinaIdentificacao%==21 SET vMaquinaIP=10.110.138.160
          IF %vMaquinaIdentificacao%==22 SET vMaquinaIP=10.110.138.161
          IF %vMaquinaIdentificacao%==23 SET vMaquinaIP=10.110.138.162
          IF %vMaquinaIdentificacao%==24 SET vMaquinaIP=10.110.138.163
          IF %vMaquinaIdentificacao%==25 SET vMaquinaIP=10.110.138.164
)

IF %vAmbienteLocal%==BS14 (
          SET vMaquinaVLAN=LABORATORIO_INSTRUMENTACAO
          SET vMaquinaGateway=10.110.137.1
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.137.2
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.137.10
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.137.11
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.137.12
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.137.13
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.137.14
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.137.15
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.137.16
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.137.17
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.137.18
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.137.19
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.137.20
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.137.21
          IF %vMaquinaIdentificacao%==13 SET vMaquinaIP=10.110.137.22
          IF %vMaquinaIdentificacao%==14 SET vMaquinaIP=10.110.137.23
          IF %vMaquinaIdentificacao%==15 SET vMaquinaIP=10.110.137.24
          IF %vMaquinaIdentificacao%==16 SET vMaquinaIP=10.110.137.25
          IF %vMaquinaIdentificacao%==17 SET vMaquinaIP=10.110.137.26
          IF %vMaquinaIdentificacao%==18 SET vMaquinaIP=10.110.137.27
          IF %vMaquinaIdentificacao%==19 SET vMaquinaIP=10.110.137.28
          IF %vMaquinaIdentificacao%==20 SET vMaquinaIP=10.110.137.29
          IF %vMaquinaIdentificacao%==21 SET vMaquinaIP=10.110.137.30
          IF %vMaquinaIdentificacao%==22 SET vMaquinaIP=10.110.137.31
          IF %vMaquinaIdentificacao%==23 SET vMaquinaIP=10.110.137.32
          IF %vMaquinaIdentificacao%==24 SET vMaquinaIP=10.110.137.33
          IF %vMaquinaIdentificacao%==25 SET vMaquinaIP=10.110.137.34
)

IF %vAmbienteLocal%==BIBLIOTECA (
          SET vMaquinaVLAN=BIBLIOTECA
          SET vMaquinaGateway=10.110.132.129
          SET vMaquinaMascara=255.255.255.128
          SET vMaquinaDNS1=10.190.254.2
          SET vMaquinaDNS2=10.190.254.3
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.132.130
          IF %vMaquinaIdentificacao%==00 SET vMaquinaIP=10.110.132.130
          IF %vMaquinaIdentificacao%==01 SET vMaquinaIP=10.110.132.133
          IF %vMaquinaIdentificacao%==02 SET vMaquinaIP=10.110.132.134
          IF %vMaquinaIdentificacao%==03 SET vMaquinaIP=10.110.132.135
          IF %vMaquinaIdentificacao%==04 SET vMaquinaIP=10.110.132.136
          IF %vMaquinaIdentificacao%==05 SET vMaquinaIP=10.110.132.137
          IF %vMaquinaIdentificacao%==06 SET vMaquinaIP=10.110.132.138
          IF %vMaquinaIdentificacao%==07 SET vMaquinaIP=10.110.132.139
          IF %vMaquinaIdentificacao%==08 SET vMaquinaIP=10.110.132.140
          IF %vMaquinaIdentificacao%==09 SET vMaquinaIP=10.110.132.141
          IF %vMaquinaIdentificacao%==10 SET vMaquinaIP=10.110.132.142
          IF %vMaquinaIdentificacao%==11 SET vMaquinaIP=10.110.132.143
          IF %vMaquinaIdentificacao%==12 SET vMaquinaIP=10.110.132.144
)