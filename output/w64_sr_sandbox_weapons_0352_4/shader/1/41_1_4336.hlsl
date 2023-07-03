// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:32 2023
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
  float4 cb0[117];
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
  uint v10 : SV_VERTEXID0,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v10.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v10.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v10.x;
  r0.w = (int)r0.y * 10;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(2,3,6,7) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r1.x = t2.Load(r1.x).w;
  r2.xyzw = t2.Load(r1.y).xyzw;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  o6.xyzw = t2.Load(r1.z).xyzw;
  o7.xyzw = t2.Load(r1.w).xyzw;
  r1.yzw = float3(1,8,5) + r0.www;
  r1.yzw = (uint3)r1.yzw;
  o4.xyzw = t2.Load(r1.y).xyzw;
  r3.xyz = t2.Load(r1.z).xyz;
  r1.yzw = t2.Load(r1.w).xyz;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r4.xyz = cb1[1].xyz * r2.yyy;
  r4.xyz = cb1[0].xyz * r2.xxx + r4.xyz;
  r4.xyz = cb1[2].xyz * r2.zzz + r4.xyz;
  r4.xyz = cb1[3].xyz + r4.xyz;
  r0.w = cmp(1 < cb0[104].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 3;
      r0.w = (uint)r0.w;
      r5.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[104].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
        r5.xyz = r2.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r5.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].zxy * r5.yyy;
  r0.xyw = cb1[0].zxy * r5.xxx + r0.xyw;
  r0.xyw = cb1[2].zxy * r5.zzz + r0.xyw;
  r0.xyw = cb1[3].zxy + r0.xyw;
  r0.xyw = r0.xyw + -r4.zxy;
  r2.x = dot(r0.xyw, r0.xyw);
  r2.x = sqrt(r2.x);
  r2.x = cmp(9.99999975e-006 < r2.x);
  r0.xyw = r2.xxx ? r0.xyw : float3(0,1,0);
  r2.x = dot(r0.xyw, r0.xyw);
  r2.x = rsqrt(r2.x);
  r2.xyz = r2.xxx * r0.ywx;
  r5.xyz = cb12[7].xyz + -r4.xyz;
  r6.xyz = r5.yzx * r0.xyw;
  r0.xyw = r0.wxy * r5.zxy + -r6.xyz;
  r3.w = dot(r0.xyw, r0.xyw);
  r3.w = rsqrt(r3.w);
  r0.xyw = r3.www * r0.xyw;
  r0.xyw = r0.xyw * r3.yyy;
  r3.w = (int)r0.z;
  r3.w = cmp(r3.w < 0.5);
  r0.xyw = r3.www ? -r0.xyw : r0.xyw;
  r0.xyw = r4.xyz + r0.xyw;
  r3.w = dot(r2.xyz, r5.xyz);
  r4.xyz = -r3.www * r2.xyz + r5.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  o1.xyz = r4.xyz * r3.www;
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = rsqrt(r3.w);
  r4.xyz = r5.xyz * r3.www;
  r2.x = dot(r4.xyz, r2.xyz);
  r2.y = cb0[97].x * 0.0174532942;
  r2.z = cb0[98].x + cb0[97].x;
  r2.z = 0.0174532942 * r2.z;
  r2.yz = cos(r2.yz);
  r2.x = abs(r2.x) + -r2.y;
  r2.y = r2.z + -r2.y;
  r2.x = saturate(r2.x / r2.y);
  o0.y = x0[r0.z+0].y;
  r4.xyzw = cb12[1].xyzw * r0.yyyy;
  r4.xyzw = cb12[0].xyzw * r0.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r0.wwww + r4.xyzw;
  r4.xyzw = cb12[3].xyzw + r4.xyzw;
  r0.z = cb0[116].x * r2.x;
  r2.x = cmp(0.999000013 < r2.w);
  o0.z = r2.x ? 0 : r0.z;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  o0.w = r4.w;
  o0.x = r1.x;
  o5.xyzw = r1.yzwx;
  o8.x = 0;
  o8.yzw = r3.xyz;
  o9.xyzw = r4.xyzw;
  return;
}