{
    "Source" : "./MaterialGraphName_Forward.azsl",

    "Definitions": ["QUALITY_LOW_END_TIER1=1", "QUALITY_LOW_END_TIER2=1", "MULTI_VIEW_FORWARD=1", "OUTPUT_DEPTH=1"],

    "DepthStencilState" :
    {
        "Depth" :
        {
            "Enable" : true,
            "CompareFunc" : "GreaterEqual"
        },
        "Stencil" :
        {
            "Enable" : true,
            "ReadMask" : "0x00",
            "WriteMask" : "0xFF",
            "FrontFace" :
            {
                "Func" : "Always",
                "DepthFailOp" : "Keep",
                "FailOp" : "Keep",
                "PassOp" : "Replace"
            },
            "BackFace" :
            {
                "Func" : "Always",
                "DepthFailOp" : "Keep",
                "FailOp" : "Keep",
                "PassOp" : "Replace"
            }
        }
    },

    "ProgramSettings":
    {
        "EntryPoints":
        [
            {
                "name": "VertexShader",
                "type": "Vertex"
            },
            {
                "name": "PixelShader",
                "type": "Fragment"
            }
        ]
    },

    "DrawList" : "multiViewForward"
}
