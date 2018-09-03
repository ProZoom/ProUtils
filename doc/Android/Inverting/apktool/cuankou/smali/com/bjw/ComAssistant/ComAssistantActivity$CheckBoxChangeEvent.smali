.class Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;
.super Ljava/lang/Object;
.source "ComAssistantActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBoxChangeEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 493
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMA:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$4(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$5(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Z)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMB:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_4

    .line 499
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 501
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMB:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$4(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$5(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Z)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMC:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_6

    .line 507
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 509
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 512
    :cond_5
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMC:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$4(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$5(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Z)V

    goto/16 :goto_0

    .line 514
    :cond_6
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMD:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    .line 517
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 520
    :cond_7
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->editTextCOMD:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$4(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$CheckBoxChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1, p2}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$5(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;Z)V

    goto/16 :goto_0
.end method
