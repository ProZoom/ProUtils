.class Lcom/seuic/scanner/activity/MainActivity$CheckedChangListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckedChangListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seuic/scanner/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/seuic/scanner/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/seuic/scanner/activity/MainActivity$CheckedChangListener;->this$0:Lcom/seuic/scanner/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/seuic/scanner/activity/MainActivity$CheckedChangListener;->this$0:Lcom/seuic/scanner/activity/MainActivity;

    invoke-static {v0, p2}, Lcom/seuic/scanner/activity/MainActivity;->access$200(Lcom/seuic/scanner/activity/MainActivity;I)V

    .line 195
    return-void
.end method
