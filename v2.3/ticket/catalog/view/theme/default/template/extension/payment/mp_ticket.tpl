                <style type="text/css">
                .msg_erro {
                  color : red;
                  display : none;
                }
                .inputspar {
                  width:49%;
                  display:inline
                }
                .obrigatorio {
                  color: red
                }

                #checkout-payment label {
                  text-transform: uppercase;
                  font-size: 14px;
                  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                  margin: 0 0 5px 0;
                  display: block;
                }

                #form-ticket{
                  margin: 0 auto;
                  width: 720px;
                }


                .form-row{
                  display: block;
                  margin-left: -15px;
                  margin-right: -15px;
                }

                [class^=form-col-]{
                  position: relative;
                  min-height: 1px;
                  padding-right: 5px;
                  padding-left: 5px;
                  padding-top: 5px;
                  padding-bottom: 5px;
                  float: left;
                  -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
                  -moz-box-sizing: border-box;    /* Firefox, other Gecko */
                  box-sizing: border-box;
                }

                .form-col-1{
                  width: 8.33333333%;
                }
                .form-col-2{
                  width: 16.66666667%;
                }
                .form-col-3{
                  width: 25%;
                }
                .form-col-4{
                  width: 33.33333333%;
                }
                .form-col-5{
                  width: 41.66666667%;
                }
                .form-col-6{
                  width: 50%;
                }
                .form-col-7{
                  width: 58.33333333%;
                }
                .form-col-8{
                  width: 66.66666667%;
                }
                .form-col-9{
                  width: 75%;
                }
                .form-col-10{
                  width: 83.33333333%;
                }
                .form-col-11{
                  width: 91.66666667%;
                }
                .form-col-12{
                  width: 100%;
                }

                .form-control-mine {
                  width: 100%;
                  height: 34px;
                  padding: 5px;
                  font-size: 14px;
                  color: #555;
                  background-color: #fff;
                  background-image: none;
                  border: 1px solid #ccc;
                  border-radius: 4px;
                  margin-bottom: 5px;
                }

                .mensagem-febraban{
                  text-transform: uppercase;
                  font-size: 10px;
                  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                }

                .btn-primary {
                    color: #fff;
                    background-color: #337ab7;
                    border-color: #2e6da4;
                    padding: 6px 12px;
                    border: 1px solid transparent;
                    border-radius: 4px;
                    text-align: center;
                    font-size: 14px;
                    font-weight: 400;
                }

                </style>
                <div id="mp_ticket"></div>
                <script src="https://secure.mlstatic.com/sdk/javascript/v1/mercadopago.js"></script>
                <input type="hidden" id="paymentType" value="ticket" />
                <input type="hidden" id="contryType" value="<?php echo $countryType; ?>" />
                <div id="spinner">
                  <div id="formulario">
                    <div class="panel-body" id="checkout-payment">
                      <div id="form-ticket">
                      <div id="formMLB">
                        <div class="form-row">
                          <div class="form-col-4">
                            <label  for="firstname">NOME<em class="obrigatorio"> *</em></label>
                            <input type="text" value="<?php echo $firstname; ?>" placeholder="Nome" id="firstname" class="form-control-mine">
                          </div>

                          <div class="form-col-4">
                            <label  for="lastname">SOBRENOME<em class="obrigatorio"> *</em></label>
                            <input type="text" value="<?php echo $lastname; ?>" placeholder="Sobrenome" id="lastname" class="form-control-mine">
                          </div>

                          <div class="form-col-4">
                            <label for="docNumber">CPF<em class="obrigatorio"> *</em></label>
                            <input type="text" placeholder="Insira seu CPF" class="form-control-mine" maxlength="11" id="docNumber"
                            onkeypress="return event.charCode >= 48 && event.charCode <= 57" data-checkout="docNumber">
                          </div>
                          <span class="msg_erro"  id="erro_name"><em>* </em>Obrigatório o preenchimento do Nome, Sobrenome e número de CPF válido</span>
                        </div>

                        <div class="form-row">
                          <div class="form-col-10">
                            <label for="address">ENDEREÇO<em class="obrigatorio"> *</em></label>
                            <input type="text" value="<?php echo $address; ?>" placeholder="Endereço" id="address" class="form-control-mine">
                          </div>
                          <div class="form-col-2">
                            <label for="number">NÚMERO<em class="obrigatorio"> *</em></label>
                            <input type="text" placeholder="Número da residência" id="number" class="form-control-mine">
                          </div>
                          <span class="msg_erro"  id="erro_address"><em>* </em>Obrigatório o preenchimento do Endereço e Número da residência</span>
                        </div>


                        <div class="form-row">
                          <div class="form-col-4">
                            <label for="city">CIDADE<em class="obrigatorio"> *</em></label>
                            <input type="text" value="<?php echo $shipping_city; ?>" placeholder="Cidade" id="city" class="form-control-mine">
                          </div>
                          <div class="form-col-4">
                            <label for="state">ESTADO<em class="obrigatorio"> *</em></label>
                            <select name="state" id="state" class="form-control-mine">
                              <option value="<?php echo $payment_zone_code; ?>" selected="selected"><?php echo $payment_zone; ?></option>
                              <option value="AC">Acre</option>
                              <option value="AL">Alagoas</option>
                              <option value="AP">Amapá</option>
                              <option value="AM">Amazonas</option>
                              <option value="BA">Bahia</option>
                              <option value="CE">Ceará</option>
                              <option value="DF">Distrito Federal</option>
                              <option value="ES">Espírito Santo</option>
                              <option value="GO">Goiás</option>
                              <option value="MA">Maranhão</option>
                              <option value="MT">Mato Grosso</option>
                              <option value="MS">Mato Grosso do Sul</option>
                              <option value="MG">Minas Gerais</option>
                              <option value="PA">Pará</option>
                              <option value="PB">Paraíba</option>
                              <option value="PR">Paraná</option>
                              <option value="PE">Pernambuco</option>
                              <option value="PI">Piauí</option>
                              <option value="RJ">Rio de Janeiro</option>
                              <option value="RN">Rio Grande do Norte</option>
                              <option value="RS">Rio Grande do Sul</option>
                              <option value="RO">Rondônia</option>
                              <option value="RA">Roraima</option>
                              <option value="SC">Santa Catarina</option>
                              <option value="SP">São Paulo</option>
                              <option value="SE">Sergipe</option>
                              <option value="TO">Tocantins</option>
                            </select>
                          </div>
                          <div class="form-col-4">
                            <label for="zipcode">CEP<em class="obrigatorio"> *</em></label>
                            <input type="text" value="<?php echo $zipcode; ?>" placeholder="CEP" id="zipcode" class="form-control-mine">
                          </div>
                          <span class="msg_erro"  id="erro_state"><em>* </em>Obrigatório o preenchimento da Cidade, Estado e CEP</span>
                        </div>
                        <div class="form-row">
                          <div class="form-col-12">
                            <span class="mensagem-febraban">
                            * Solicitamos essas informações a fim de cumprir as normas impostas pelo Banco Central do Brasil sobre a emissão de boletos conforme as circulares n. 3.461/09, 3.598/12 e 3.656/13.
                            </span>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-12" id="div_payment_methods" style="text-align: center;">
                      </div>
                        <div class="form-row">
                          <div class="form-col-12">
                            <input type="hidden" id="payment_method_id" />
                            <button class="btn btn-primary pull-right" id="button_pay"><?php echo $payment_button; ?></button>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>
                <?php echo('<script defer type="text/javascript" src="//fgnass.github.io/spin.js/spin.min.js"></script>'); ?>
                <?php echo('<script defer src="./catalog/view/javascript/mp_ticket/mask.js"></script>'); ?>
                <?php echo('<script defer type="text/javascript" src="./admin/view/javascript/mp_ticket/spinner.min.js"></script>'); ?>
                <?php echo('<script defer src="./catalog/view/javascript/mp_ticket/mp_ticket_view.js"></script>'); ?>
                <?php echo('<script defer src="https://secure.mlstatic.com/modules/javascript/analytics.js"></script>'); ?>
            </div>
<script type="text/javascript">

    $(document).ready(function(){ 
        var type = $("#contryType").val();

        if (type != "MLB") {
            $("#formMLB").hide();
            $("#div_payment_methods").show();
        } else {
           $("#formMLB").show();
           $("#div_payment_methods").hide();
        }

        $("#docNumber").mask("999.999.999-99");
    });

    $.getScript("https://secure.mlstatic.com/modules/javascript/analytics.js", function(){

        ModuleAnalytics.setToken("<?php echo $analytics['token'] ?>");
        ModuleAnalytics.setPlatform("<?php echo $analytics['platform'] ?>");
        ModuleAnalytics.setPlatformVersion("<?php echo $analytics['platformVersion'] ?>");
        ModuleAnalytics.setModuleVersion("<?php echo $analytics['moduleVersion'] ?>");
        ModuleAnalytics.setPayerEmail("<?php echo $analytics['payerEmail'] ?>");
        ModuleAnalytics.setUserLogged(parseInt("<?php echo $analytics['userLogged'] ?>"));
        ModuleAnalytics.setInstalledModules("<?php echo $analytics['installedModules'] ?>");
        ModuleAnalytics.setAdditionalInfo("<?php echo $analytics['additionalInfo'] ?>");
        ModuleAnalytics.post();

     });
</script>