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
  float4 cb0[120];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
  uint4 bitmask, uiDest;
  float4 fDest;

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
  r1.xyzw = float4(6,2,3,7) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r1.x = t2.Load(r1.y).w;
  r3.xyzw = t2.Load(r1.z).xyzw;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  r4.xyzw = t2.Load(r1.w).xyzw;
  r5.xyzw = float4(1,8,9,5) + r0.wwww;
  r5.xyzw = (uint4)r5.xyzw;
  o4.xyzw = t2.Load(r5.x).xyzw;
  r6.xyzw = t2.Load(r5.y).xyzw;
  r0.w = t2.Load(r5.z).x;
  r1.yzw = t2.Load(r5.w).xyz;
  r5.xyz = cb1[1].xyz * r3.yyy;
  r5.xyz = cb1[0].xyz * r3.xxx + r5.xyz;
  r5.xyz = cb1[2].xyz * r3.zzz + r5.xyz;
  r5.xyz = cb1[3].xyz + r5.xyz;
  r5.w = cmp(1 < cb0[104].x);
  if (r5.w != 0) {
    r5.w = cmp((int)r0.y < 0);
    if (r5.w != 0) {
      r5.w = cb0[36].x + 3;
      r5.w = (uint)r5.w;
      r7.xyz = t2.Load(r5.w).xyz;
    } else {
      r5.w = cb0[104].x + -1;
      r0.x = -r5.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
        r7.xyz = r3.xyz * float3(2,2,2) + -r8.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r7.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].xyz * r7.yyy;
  r3.xyz = cb1[0].xyz * r7.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * r7.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r3.xyz = r3.xyz + -r5.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(1,0,0);
  r7.xyz = cb12[7].xyz + -r5.xyz;
  r0.xy = cos(r2.xy);
  r8.x = r0.x * r0.y;
  r0.x = sin(r2.x);
  r8.y = r0.x * r0.y;
  r8.z = sin(-r2.y);
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r0.y = frac(cb0[107].x);
  r0.y = r0.x ? cb0[106].x : r0.y;
  r0.y = 3.14100003 * r0.y;
  sincos(r0.y, r2.x, r9.x);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r3.xyz * r0.yyy;
  r9.yzw = r3.xyz * r2.xxx;
  r10.xyz = -r9.zwy * r8.zxy;
  r10.xyz = r8.yzx * -r9.wyz + -r10.xyz;
  r0.y = dot(r8.xyz, -r9.yzw);
  r10.w = -r0.y;
  r8.xyz = r9.xxx * r8.xyz;
  r8.w = 0;
  r8.xyzw = r10.xyzw + r8.xyzw;
  r10.xyz = r9.wyz * r8.yzx;
  r10.xyz = r9.zwy * r8.zxy + -r10.xyz;
  r8.xyz = r9.xxx * r8.xyz + r10.xyz;
  r8.xyz = r8.www * r9.yzw + r8.xyz;
  r9.xyz = r8.xyz * r6.www;
  r5.xyz = r8.xyz * r6.www + r5.xyz;
  r0.y = dot(r7.xyz, r7.xyz);
  r0.y = rsqrt(r0.y);
  r7.xyz = r7.xyz * r0.yyy;
  r0.y = dot(r9.xyz, r9.xyz);
  r0.y = rsqrt(r0.y);
  o1.xyz = r9.xyz * r0.yyy;
  r0.y = dot(r7.xyz, r3.xyz);
  r0.z = cb0[97].x * 0.0174532942;
  r0.z = cos(r0.z);
  r2.x = cb0[98].x + cb0[97].x;
  r2.x = 0.0174532942 * r2.x;
  r2.x = cos(r2.x);
  r0.y = abs(r0.y) + -r0.z;
  r0.z = r2.x + -r0.z;
  r0.y = saturate(r0.y / r0.z);
  o0.y = r0.x ? cb0[106].x : cb0[107].x;
  r7.xyzw = cb12[1].xyzw * r5.yyyy;
  r7.xyzw = cb12[0].xyzw * r5.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r5.zzzz + r7.xyzw;
  r7.xyzw = cb12[3].xyzw + r7.xyzw;
  r0.x = cb0[119].x * r0.y;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r5.xyz;
  o0.w = r7.w;
  o0.x = r1.x;
  o5.xyzw = r1.yzwx;
  o6.xy = r2.zw;
  o6.zw = r4.xy;
  o7.xy = float2(0,0);
  o7.zw = r4.zw;
  o8.xyw = r6.xyz;
  o8.z = 0;
  o10.xyzw = r7.xyzw;
  o9.x = r6.w;
  o9.y = r0.w;
  return;
}