// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
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
  float4 cb0[131];
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
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD10,
  out float4 o11 : TEXCOORD11,
  out float4 o12 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v10.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
  r1.xyzw = float4(2,3,6,5) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r1.x = t2.Load(r1.x).w;
  r2.xyzw = t2.Load(r1.y).xyzw;
  r3.xyzw = t2.Load(r1.z).xyzw;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  r1.yzw = t2.Load(r1.w).xyz;
  r4.xyzw = float4(7,8,1,9) + r0.wwww;
  r4.xyzw = (uint4)r4.xyzw;
  r5.xyzw = t2.Load(r4.x).xyzw;
  r6.xyzw = t2.Load(r4.y).xyzw;
  o4.xyzw = t2.Load(r4.z).xyzw;
  r4.xy = t2.Load(r4.w).xy;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r7.xyz = cb1[1].xyz * r2.yyy;
  r7.xyz = cb1[0].xyz * r2.xxx + r7.xyz;
  r7.xyz = cb1[2].xyz * r2.zzz + r7.xyz;
  r7.xyz = cb1[3].xyz + r7.xyz;
  r0.w = cmp(1 < cb0[127].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 3;
      r0.w = (uint)r0.w;
      r8.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[127].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r9.xyz = t2.Load(r0.x).xyz;
        r8.xyz = r2.xyz * float3(2,2,2) + -r9.xyz;
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
  r2.x = dot(r0.xyw, r0.xyw);
  r2.x = sqrt(r2.x);
  r2.x = cmp(9.99999975e-006 < r2.x);
  r0.xyw = r2.xxx ? r0.xyw : float3(0,1,0);
  r2.x = dot(r0.xyw, r0.xyw);
  r2.x = rsqrt(r2.x);
  r2.xyz = r2.xxx * r0.ywx;
  r8.xyz = cb12[7].xyz + -r7.xyz;
  r9.xyz = r8.yzx * r0.xyw;
  r0.xyw = r0.wxy * r8.zxy + -r9.xyz;
  r4.z = dot(r0.xyw, r0.xyw);
  r4.z = rsqrt(r4.z);
  r0.xyw = r4.zzz * r0.xyw;
  r0.xyw = r0.xyw * r6.www;
  r4.z = (int)r0.z;
  r4.z = cmp(r4.z < 0.5);
  r0.xyw = r4.zzz ? -r0.xyw : r0.xyw;
  r0.xyw = r7.xyz + r0.xyw;
  r4.z = dot(r2.xyz, r8.xyz);
  r7.xyz = -r4.zzz * r2.xyz + r8.xyz;
  r4.z = dot(r7.xyz, r7.xyz);
  r4.z = rsqrt(r4.z);
  o1.xyz = r7.xyz * r4.zzz;
  r4.z = dot(r8.xyz, r8.xyz);
  r4.w = rsqrt(r4.z);
  r7.xyz = r8.xyz * r4.www;
  r2.x = dot(r7.xyz, r2.xyz);
  r2.y = cb0[120].x * 0.0174532942;
  r2.z = cb0[121].x + cb0[120].x;
  r2.z = 0.0174532942 * r2.z;
  r2.yz = cos(r2.yz);
  r2.x = abs(r2.x) + -r2.y;
  r2.y = r2.z + -r2.y;
  r2.x = saturate(r2.x / r2.y);
  o0.y = x0[r0.z+0].y;
  r7.xyzw = cb12[1].xyzw * r0.yyyy;
  r7.xyzw = cb12[0].xyzw * r0.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r0.wwww + r7.xyzw;
  r7.xyzw = cb12[3].xyzw + r7.xyzw;
  r0.z = sqrt(r4.z);
  r2.y = r0.z * 4 + -2;
  r0.z = 10000 + -r0.z;
  r0.z = saturate(min(r2.y, r0.z));
  r0.z = r0.z * r2.x;
  r0.z = cb0[15].y * r0.z;
  r0.z = cb0[130].x * r0.z;
  r2.x = cmp(0.999000013 < r2.w);
  o0.z = r2.x ? 0 : r0.z;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  o0.w = r7.w;
  o0.x = r1.x;
  o5.xyzw = r1.yzwx;
  o6.xyz = r3.xyz;
  o6.w = 0;
  o7.xyz = r5.xyz;
  o7.w = r3.w;
  o8.xy = float2(0,0);
  o8.zw = r6.xy;
  o9.xyzw = float4(0,0,0,0);
  o10.xz = float2(0,0);
  o10.y = r5.w;
  o10.w = r6.z;
  o11.x = 0;
  o11.y = r6.w;
  o11.zw = r4.xy;
  o12.xyzw = r7.xyzw;
  return;
}