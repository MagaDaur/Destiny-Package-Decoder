// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:37 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[118];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  float4 v11 : TEXCOORD11,
  float4 v12 : TEXCOORD12,
  float4 v13 : TEXCOORD13,
  uint v14 : SV_VERTEXID0,
  uint v15 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD10,
  out float4 o11 : TEXCOORD11,
  out float2 o12 : TEXCOORD12,
  out float4 o13 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v14.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v14.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v14.x;
  r0.w = (int)r0.y * 14;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(4,5,1,10) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.x = t2.Load(r1.x).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.x = (uint)r0.w;
  o3.xyzw = t2.Load(r1.x).xyzw;
  o4.xyzw = t2.Load(r1.z).xyzw;
  r1.xyzw = t2.Load(r1.w).xyzw;
  r4.xyzw = float4(8,9,2,3) + r0.wwww;
  r4.xyzw = (uint4)r4.xyzw;
  r2.z = t2.Load(r4.x).w;
  r5.xyzw = t2.Load(r4.y).xyzw;
  o5.xyzw = t2.Load(r4.z).xyzw;
  o6.xyzw = t2.Load(r4.w).xyzw;
  r4.xyz = float3(11,7,12) + r0.www;
  r4.xyz = (uint3)r4.xyz;
  o11.xyzw = t2.Load(r4.x).xyzw;
  r4.xyw = t2.Load(r4.y).xyz;
  r6.xy = t2.Load(r4.z).xy;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r7.xyz = cb1[1].xyz * r3.yyy;
  r7.xyz = cb1[0].xyz * r3.xxx + r7.xyz;
  r7.xyz = cb1[2].xyz * r3.zzz + r7.xyz;
  r7.xyz = cb1[3].xyz + r7.xyz;
  r0.w = cmp(1 < cb0[113].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 5;
      r0.w = (uint)r0.w;
      r8.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[113].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 5 + r0.x;
        r0.x = (uint)r0.x;
        r9.xyz = t2.Load(r0.x).xyz;
        r8.xyz = r3.xyz * float3(2,2,2) + -r9.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 5 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r8.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].zxy * r8.yyy;
  r0.xyw = cb1[0].zxy * r8.xxx + r0.xyw;
  r0.xyw = cb1[2].zxy * r8.zzz + r0.xyw;
  r0.xyw = cb1[3].zxy + r0.xyw;
  r0.xyw = r0.xyw + -r7.zxy;
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = sqrt(r2.w);
  r2.w = cmp(9.99999975e-006 < r2.w);
  r0.xyw = r2.www ? r0.xyw : float3(0,1,0);
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = rsqrt(r2.w);
  r3.xyz = r2.www * r0.ywx;
  r8.xyz = cb12[7].xyz + -r7.xyz;
  r9.xyz = r8.yzx * r0.xyw;
  r0.xyw = r0.wxy * r8.zxy + -r9.xyz;
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = rsqrt(r2.w);
  r0.xyw = r2.www * r0.xyw;
  r0.xyw = r0.xyw * r6.xxx;
  r2.w = (int)r0.z;
  r2.w = cmp(r2.w < 0.5);
  r0.xyw = r2.www ? -r0.xyw : r0.xyw;
  r0.xyw = r7.xyz + r0.xyw;
  r2.w = dot(r3.xyz, r8.xyz);
  r7.xyz = -r2.www * r3.xyz + r8.xyz;
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = rsqrt(r2.w);
  o1.xyz = r7.xyz * r2.www;
  r2.w = dot(r8.xyz, r8.xyz);
  r2.w = rsqrt(r2.w);
  r7.xyz = r8.xyz * r2.www;
  r2.w = dot(r7.xyz, r3.xyz);
  r3.x = cb0[106].x * 0.0174532942;
  r3.y = cb0[107].x + cb0[106].x;
  r3.y = 0.0174532942 * r3.y;
  r3.xy = cos(r3.xy);
  r2.w = -r3.x + abs(r2.w);
  r3.x = r3.y + -r3.x;
  r2.w = saturate(r2.w / r3.x);
  r2.y = x0[r0.z+0].y;
  o0.xy = float2(0.200000003,1) * r2.xy;
  r7.xyzw = cb12[1].xyzw * r0.yyyy;
  r7.xyzw = cb12[0].xyzw * r0.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r0.wwww + r7.xyzw;
  r7.xyzw = cb12[3].xyzw + r7.xyzw;
  r0.z = cb0[117].x * r2.w;
  r2.y = cmp(0.999000013 < r3.w);
  o0.z = r2.y ? 0 : r0.z;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  o0.w = r7.w;
  o7.xyz = r4.xyw;
  o7.w = r2.x;
  o8.xyz = r5.xyz;
  o8.w = 0;
  o9.xy = r1.xy;
  o9.z = r2.z;
  o9.w = 0;
  o10.x = r5.w;
  o10.yz = r1.zw;
  o10.w = 0;
  o13.xyzw = r7.xyzw;
  o12.xy = r6.xy;
  return;
}