// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
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
  float4 cb0[137];
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
  out float2 o9 : TEXCOORD9,
  out float4 o10 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v10.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
  r3.xyzw = float4(1,8,9,5) + r0.wwww;
  r3.xyzw = (uint4)r3.xyzw;
  o4.xyzw = t2.Load(r3.x).xyzw;
  r4.xyzw = t2.Load(r3.y).xyzw;
  r0.w = t2.Load(r3.z).x;
  r1.yzw = t2.Load(r3.w).xyz;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r3.xyz = cb1[1].xyz * r2.yyy;
  r3.xyz = cb1[0].xyz * r2.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * r2.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r3.w = cmp(1 < cb0[112].x);
  if (r3.w != 0) {
    r3.w = cmp((int)r0.y < 0);
    if (r3.w != 0) {
      r3.w = cb0[36].x + 3;
      r3.w = (uint)r3.w;
      r5.xyz = t2.Load(r3.w).xyz;
    } else {
      r3.w = cb0[112].x + -1;
      r0.x = -r3.w + r0.x;
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
  r2.xyz = cb1[1].zxy * r5.yyy;
  r2.xyz = cb1[0].zxy * r5.xxx + r2.xyz;
  r2.xyz = cb1[2].zxy * r5.zzz + r2.xyz;
  r2.xyz = cb1[3].zxy + r2.xyz;
  r2.xyz = r2.xyz + -r3.zxy;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r2.xyz = r0.xxx ? r2.xyz : float3(0,1,0);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r5.xyz = r2.yzx * r0.xxx;
  r6.xyz = cb12[7].xyz + -r3.xyz;
  r7.xyz = r6.yzx * r2.xyz;
  r2.xyz = r2.zxy * r6.zxy + -r7.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.xyz * r0.xxx;
  r2.xyz = r2.xyz * r4.yyy;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r2.xyz = r0.xxx ? -r2.xyz : r2.xyz;
  r2.xyz = r3.xyz + r2.xyz;
  r0.x = dot(r5.xyz, r6.xyz);
  r3.xyz = -r0.xxx * r5.xyz + r6.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  o1.xyz = r3.xyz * r0.xxx;
  r0.x = dot(r6.xyz, r6.xyz);
  r0.y = rsqrt(r0.x);
  r3.xyz = r6.xyz * r0.yyy;
  r0.y = dot(r3.xyz, r5.xyz);
  r3.x = cb0[105].x * 0.0174532942;
  r3.y = cb0[106].x + cb0[105].x;
  r3.y = 0.0174532942 * r3.y;
  r3.xy = cos(r3.xy);
  r0.y = -r3.x + abs(r0.y);
  r3.x = r3.y + -r3.x;
  r0.y = saturate(r0.y / r3.x);
  o0.y = x0[r0.z+0].y;
  r3.xyzw = cb12[1].xyzw * r2.yyyy;
  r3.xyzw = cb12[0].xyzw * r2.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r2.zzzz + r3.xyzw;
  r3.xyzw = cb12[3].xyzw + r3.xyzw;
  r0.x = sqrt(r0.x);
  r0.z = r0.x * 0.666666985 + -0.666666985;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.z, r0.x));
  r0.x = r0.x * r0.y;
  r0.x = cb0[16].y * r0.x;
  r0.x = cb0[136].x * r0.x;
  r0.y = cmp(0.999000013 < r2.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r2.xyz;
  o0.w = r3.w;
  o0.x = r1.x;
  o5.xyzw = r1.yzwx;
  o8.x = 0;
  o8.yzw = r4.xyz;
  o10.xyzw = r3.xyzw;
  o9.x = r4.w;
  o9.y = r0.w;
  return;
}