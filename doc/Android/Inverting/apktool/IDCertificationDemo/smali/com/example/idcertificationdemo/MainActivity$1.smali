.class Lcom/example/idcertificationdemo/MainActivity$1;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/idcertificationdemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/idcertificationdemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/idcertificationdemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/idcertificationdemo/MainActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget v4, p1, Landroid/os/Message;->what:I

    .line 85
    .local v4, "what":I
    const/4 v1, 0x0

    .line 86
    .local v1, "content_decryp":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 88
    :sswitch_0
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v5}, Lcom/example/idcertificationdemo/MainActivity;->access$000(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "resultFlag"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 90
    .local v3, "resultCode":I
    if-nez v3, :cond_0

    .line 91
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v5}, Lcom/example/idcertificationdemo/MainActivity;->access$000(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "resultContent"

    .line 92
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    iget-object v5, v5, Lcom/example/idcertificationdemo/MainActivity;->appSecret_3des:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/example/idcertificationdemo/tool/Des33;->decode1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v5, v1}, Lcom/example/idcertificationdemo/MainActivity;->access$100(Lcom/example/idcertificationdemo/MainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v5}, Lcom/example/idcertificationdemo/MainActivity;->access$200(Lcom/example/idcertificationdemo/MainActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-static {v7}, Lcom/example/idcertificationdemo/MainActivity;->access$000(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "stepFlag"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "**********"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "resultFlag:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "errorMsg: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    .line 109
    invoke-static {v5}, Lcom/example/idcertificationdemo/MainActivity;->access$000(Lcom/example/idcertificationdemo/MainActivity;)Ljava/util/Map;

    move-result-object v5

    const-string v8, "errorMsg"

    .line 110
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 114
    .end local v3    # "resultCode":I
    :sswitch_1
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    const-string v6, "\u8fde\u63a5\u84dd\u7259\u5931\u8d25"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 118
    :sswitch_2
    iget-object v5, p0, Lcom/example/idcertificationdemo/MainActivity$1;->this$0:Lcom/example/idcertificationdemo/MainActivity;

    invoke-virtual {v5}, Lcom/example/idcertificationdemo/MainActivity;->clearUI()V

    goto/16 :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x29a -> :sswitch_2
    .end sparse-switch
.end method
