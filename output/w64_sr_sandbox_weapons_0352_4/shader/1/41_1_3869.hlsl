// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
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
  float4 cb0[128];
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
  uint v11 : SV_VERTEXID0,
  uint v12 : SV_InstanceID0,
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
  out float4 o11 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v11.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v11.x;
  r0.w = (int)r0.y * 11;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(2,3,4,6) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.x = t2.Load(r1.x).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.x = t2.Load(r1.z).w;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  o6.xyzw = t2.Load(r1.w).xyzw;
  r4.xyzw = float4(7,8,1,9) + r0.wwww;
  r4.xyzw = (uint4)r4.xyzw;
  r1.yzw = t2.Load(r4.x).xyw;
  o8.xyzw = t2.Load(r4.y).xyzw;
  o4.xyzw = t2.Load(r4.z).xyzw;
  r4.xyzw = t2.Load(r4.w).xyzw;
  r2.zw = float2(10,5) + r0.ww;
  r2.zw = (uint2)r2.zw;
  r5.xy = t2.Load(r2.z).xy;
  r6.xyz = t2.Load(r2.w).xyz;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r7.xyz = cb1[1].xyz * r3.yyy;
  r7.xyz = cb1[0].xyz * r3.xxx + r7.xyz;
  r7.xyz = cb1[2].xyz * r3.zzz + r7.xyz;
  r7.xyz = cb1[3].xyz + r7.xyz;
  r0.w = cmp(1 < cb0[104].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 3;
      r0.w = (uint)r0.w;
      r8.xyz = t2.Load(r0.w).xyz;
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
        r9.xyz = t2.Load(r0.x).xyz;
        r8.xyz = r3.xyz * float3(2,2,2) + -r9.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
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
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = sqrt(r2.z);
  r2.z = cmp(9.99999975e-006 < r2.z);
  r0.xyw = r2.zzz ? r0.xyw : float3(0,1,0);
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = rsqrt(r2.z);
  r3.xyz = r2.zzz * r0.ywx;
  r8.xyz = cb12[7].xyz + -r7.xyz;
  r9.xyz = r8.yzx * r0.xyw;
  r0.xyw = r0.wxy * r8.zxy + -r9.xyz;
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = rsqrt(r2.z);
  r0.xyw = r2.zzz * r0.xyw;
  r0.xyw = r0.xyw * r4.zzz;
  r2.z = (int)r0.z;
  r2.z = cmp(r2.z < 0.5);
  r0.xyw = r2.zzz ? -r0.xyw : r0.xyw;
  r0.xyw = r7.xyz + r0.xyw;
  r2.z = dot(r3.xyz, r8.xyz);
  r7.xyz = -r2.zzz * r3.xyz + r8.xyz;
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = rsqrt(r2.z);
  o1.xyz = r7.xyz * r2.zzz;
  r2.z = dot(r8.xyz, r8.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = r8.xyz * r2.zzz;
  r2.z = dot(r7.xyz, r3.xyz);
  r2.w = cb0[97].x * 0.0174532942;
  r2.w = cos(r2.w);
  r3.x = cb0[98].x + cb0[97].x;
  r3.x = 0.0174532942 * r3.x;
  r3.x = cos(r3.x);
  r2.z = abs(r2.z) + -r2.w;
  r2.w = r3.x + -r2.w;
  r2.z = saturate(r2.z / r2.w);
  r2.y = x0[r0.z+0].y;
  o0.xy = float2(0.200000003,1) * r2.xy;
  r7.xyzw = cb12[1].xyzw * r0.yyyy;
  r7.xyzw = cb12[0].xyzw * r0.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r0.wwww + r7.xyzw;
  r7.xyzw = cb12[3].xyzw + r7.xyzw;
  r0.z = cb0[127].x * r2.z;
  r1.x = cmp(0.999000013 < r1.x);
  o0.z = r1.x ? 0 : r0.z;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  o0.w = r7.w;
  o5.xyz = r6.xyz;
  o5.w = r2.x;
  o7.xyw = r1.yzw;
  o7.z = r3.w;
  o9.xz = r4.xy;
  o9.yw = float2(0,0);
  o10.xy = r4.zw;
  o10.zw = r5.xy;
  o11.xyzw = r7.xyzw;
  return;
}