.class Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;
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
    name = "ToggleButtonCheckedChangeEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 546
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_5

    .line 547
    if-eqz p2, :cond_4

    .line 548
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 553
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 556
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setPort(Ljava/lang/String;)Z

    .line 561
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMA:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setBaudRate(Ljava/lang/String;)Z

    .line 562
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$8(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    goto/16 :goto_0

    .line 565
    :cond_4
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComA:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 566
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 568
    :cond_5
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_a

    .line 569
    if-eqz p2, :cond_9

    .line 570
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 572
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 574
    :cond_6
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 575
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 577
    :cond_7
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 578
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 582
    :cond_8
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setPort(Ljava/lang/String;)Z

    .line 583
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMB:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setBaudRate(Ljava/lang/String;)Z

    .line 584
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$8(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    goto/16 :goto_0

    .line 587
    :cond_9
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComB:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 588
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 590
    :cond_a
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_f

    .line 591
    if-eqz p2, :cond_e

    .line 592
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 594
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 596
    :cond_b
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 597
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 599
    :cond_c
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 600
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 604
    :cond_d
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setPort(Ljava/lang/String;)Z

    .line 605
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMC:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setBaudRate(Ljava/lang/String;)Z

    .line 606
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$8(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    goto/16 :goto_0

    .line 609
    :cond_e
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComC:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 610
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMC:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 612
    :cond_f
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMD:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_0

    .line 613
    if-eqz p2, :cond_13

    .line 614
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMA:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMA:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 616
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 618
    :cond_10
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMB:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMB:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 619
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 621
    :cond_11
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->toggleButtonCOMC:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMC:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 622
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e32\u53e3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v2, v2, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$7(Lcom/bjw/ComAssistant/ComAssistantActivity;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 626
    :cond_12
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerCOMD:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setPort(Ljava/lang/String;)Z

    .line 627
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->SpinnerBaudRateCOMD:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;->setBaudRate(Ljava/lang/String;)Z

    .line 628
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$8(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    goto/16 :goto_0

    .line 631
    :cond_13
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v1, v1, Lcom/bjw/ComAssistant/ComAssistantActivity;->ComD:Lcom/bjw/ComAssistant/ComAssistantActivity$SerialControl;

    invoke-static {v0, v1}, Lcom/bjw/ComAssistant/ComAssistantActivity;->access$1(Lcom/bjw/ComAssistant/ComAssistantActivity;Lcom/bjw/ComAssistant/SerialHelper;)V

    .line 632
    iget-object v0, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$ToggleButtonCheckedChangeEvent;->this$0:Lcom/bjw/ComAssistant/ComAssistantActivity;

    iget-object v0, v0, Lcom/bjw/ComAssistant/ComAssistantActivity;->checkBoxAutoCOMD:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method
