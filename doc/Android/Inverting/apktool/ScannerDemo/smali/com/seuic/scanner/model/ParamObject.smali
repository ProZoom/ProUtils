.class public Lcom/seuic/scanner/model/ParamObject;
.super Ljava/lang/Object;
.source "ParamObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/scanner/model/ParamObject$ViewType;
    }
.end annotation


# instance fields
.field private choices:[Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:I

.field private interval:[I

.field private type:Lcom/seuic/scanner/model/ParamObject$ViewType;

.field private value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/seuic/scanner/model/ParamObject$ViewType;[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "type"    # Lcom/seuic/scanner/model/ParamObject$ViewType;
    .param p5, "choices"    # [Ljava/lang/String;
    .param p6, "interval"    # [I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/seuic/scanner/model/ParamObject;->id:I

    .line 31
    iput-object p2, p0, Lcom/seuic/scanner/model/ParamObject;->description:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/seuic/scanner/model/ParamObject;->value:I

    .line 33
    iput-object p4, p0, Lcom/seuic/scanner/model/ParamObject;->type:Lcom/seuic/scanner/model/ParamObject$ViewType;

    .line 34
    iput-object p5, p0, Lcom/seuic/scanner/model/ParamObject;->choices:[Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/seuic/scanner/model/ParamObject;->interval:[I

    .line 36
    return-void
.end method


# virtual methods
.method public getChoices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/seuic/scanner/model/ParamObject;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/seuic/scanner/model/ParamObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/seuic/scanner/model/ParamObject;->id:I

    return v0
.end method

.method public getInterval()[I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/seuic/scanner/model/ParamObject;->interval:[I

    return-object v0
.end method

.method public getType()Lcom/seuic/scanner/model/ParamObject$ViewType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/seuic/scanner/model/ParamObject;->type:Lcom/seuic/scanner/model/ParamObject$ViewType;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/seuic/scanner/model/ParamObject;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/seuic/scanner/model/ParamObject;->value:I

    .line 61
    return-void
.end method
