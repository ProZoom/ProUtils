.class Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent$1;
.super Landroid/text/method/NumberKeyListener;
.source "ComAssistantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;


# direct methods
.method constructor <init>(Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent$1;->this$1:Lcom/bjw/ComAssistant/ComAssistantActivity$radioButtonClickEvent;

    .line 457
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 466
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method
