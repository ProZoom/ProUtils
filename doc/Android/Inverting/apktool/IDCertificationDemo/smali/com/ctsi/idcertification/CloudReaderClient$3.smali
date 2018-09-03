.class Lcom/ctsi/idcertification/CloudReaderClient$3;
.super Ljava/lang/Object;
.source "CloudReaderClient.java"

# interfaces
.implements Lcom/ctsi/idcertification/custom/CustomInterface$OnLogInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ctsi/idcertification/CloudReaderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ctsi/idcertification/CloudReaderClient;


# direct methods
.method constructor <init>(Lcom/ctsi/idcertification/CloudReaderClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFinish(Ljava/util/Map;)V
    .locals 11
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 524
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 525
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$3(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 527
    :cond_0
    const-string v8, "resultFlag"

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 529
    const-string v8, "resultFlag"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 528
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 531
    .local v4, "login_result":I
    if-nez v4, :cond_4

    .line 533
    const-string v8, "resultContent"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, "resultContent":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 536
    .local v6, "resultJSon":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    const-string v9, "token"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ctsi/idcertification/CloudReaderClient;->access$6(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/lang/String;)V

    .line 537
    const-string v8, "redisIp"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 538
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    const-string v9, "redisIp"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ctsi/idcertification/CloudReaderClient;->access$7(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/lang/String;)V

    .line 539
    :cond_1
    const-string v8, "ip"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "ip":Ljava/lang/String;
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v9}, Lcom/ctsi/idcertification/CloudReaderClient;->access$8(Lcom/ctsi/idcertification/CloudReaderClient;Ljava/util/List;)V

    .line 541
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "ipList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v8, :cond_3

    .line 549
    .end local v1    # "i":I
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "ipList":[Ljava/lang/String;
    .end local v6    # "resultJSon":Lorg/json/JSONObject;
    :goto_1
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$10(Lcom/ctsi/idcertification/CloudReaderClient;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 574
    .end local v4    # "login_result":I
    .end local v5    # "resultContent":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 543
    .restart local v1    # "i":I
    .restart local v2    # "ip":Ljava/lang/String;
    .restart local v3    # "ipList":[Ljava/lang/String;
    .restart local v4    # "login_result":I
    .restart local v5    # "resultContent":Ljava/lang/String;
    .restart local v6    # "resultJSon":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$9(Lcom/ctsi/idcertification/CloudReaderClient;)Ljava/util/List;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "i":I
    .end local v2    # "ip":Ljava/lang/String;
    .end local v3    # "ipList":[Ljava/lang/String;
    .end local v6    # "resultJSon":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 552
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_0
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x6f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 555
    :pswitch_1
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x14d

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 558
    :pswitch_2
    iget-object v8, p0, Lcom/ctsi/idcertification/CloudReaderClient$3;->this$0:Lcom/ctsi/idcertification/CloudReaderClient;

    invoke-static {v8}, Lcom/ctsi/idcertification/CloudReaderClient;->access$11(Lcom/ctsi/idcertification/CloudReaderClient;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xde

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 563
    .end local v5    # "resultContent":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 564
    .local v7, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "stepFlag"

    .line 565
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 564
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v8, "resultFlag"

    .line 567
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 566
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v8, "errorMsg"

    .line 569
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "auth failed,"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "errorMsg"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 568
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-static {}, Lcom/ctsi/idcertification/CloudReaderClient;->access$12()Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/ctsi/idcertification/CloudReaderClient$OnReadCardListener;->onReadFinish(Ljava/util/Map;)V

    goto :goto_2

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
