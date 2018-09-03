.class Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "radioButtonClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonTxt:Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_1

    .line 450
    new-instance v1, Landroid/text/method/TextKeyListener;

    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-direct {v1, v2, v3}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 451
    .local v1, "TxtkeyListener":Landroid/text/method/KeyListener;
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 452
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 453
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 454
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 455
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bjw/bean/AssistBean;->setTxtMode(Z)V

    .line 476
    .end local v1    # "TxtkeyListener":Landroid/text/method/KeyListener;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {v3}, Lcom/bjw/bean/AssistBean;->getSendA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {v3}, Lcom/bjw/bean/AssistBean;->getSendB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {v3}, Lcom/bjw/bean/AssistBean;->getSendC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {v3}, Lcom/bjw/bean/AssistBean;->getSendD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    .line 481
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    .line 482
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    .line 483
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v3, v3, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$2(Lcom/bjw/ComAssistant/ComAssistantActivity;Landroid/widget/TextView;)V

    .line 484
    return-void

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->radioButtonHex:Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_0

    .line 457
    new-instance v0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent$1;

    invoke-direct {v0, p0}, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent$1;-><init>(Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;)V

    .line 470
    .local v0, "HexkeyListener":Landroid/text/method/KeyListener;
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 471
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 472
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 473
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 474
    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->AssistData:Lcom/bjw/bean/AssistBean;

    invoke-virtual {v2, v3}, Lcom/bjw/bean/AssistBean;->setTxtMode(Z)V

    goto/16 :goto_0
.end method
